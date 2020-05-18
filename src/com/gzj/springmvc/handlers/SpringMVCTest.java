package com.gzj.springmvc.handlers;

import java.util.Arrays;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.gzj.springmvc.entities.User;

@SessionAttributes(value={"user","content"},types= {String.class})
@RequestMapping("/springmvc")
@Controller
public class SpringMVCTest {

	@RequestMapping("/testRequestMapping")
	public String testRequestMapping() {
		System.out.println("testRequestMapping...");
		return "success";
	}
	
	@RequestMapping(value="/testMethod",method=RequestMethod.POST)
	public String  testMethod()
	{
		System.out.println("testMethod");
		return "success";
	}
	
	@RequestMapping(value="/testParamsAndHeaders",
			params= {"username","age!=10"},
			headers= {"Accept-Language=zh-CN,zh;q=0.9"})
	public String  testParamsAndHeaders()
	{
		System.out.println("testParamsAndHeaders");
		return "success";
	}
	
	@RequestMapping("/testAntPath/*/abc")
	public String testAntPath()
	{
		System.out.println("testAntPath");
		return "success";
	}
	
	@RequestMapping("/testPathVariable/{id}")
	public String testPathVariable(@PathVariable("id") Integer id)
	{
		System.out.println("testPathVariable:"+id);
		return "success";
	}
	/**
	 * Rest ����URL
	 * ��CRUDΪ��
	 * ����  /order POST
	 * �޸� /order/1 PUT
	 * ��ȡ /order/1 GET
	 * ɾ�� /order/1 DELETE
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/testRest/{id}",method=RequestMethod.GET)
	public String testRest(@PathVariable("id") Integer id)
	{
		System.out.println("testRest GET :"+id);
		return "success";
	}
	
	@RequestMapping(value="/testRest",method=RequestMethod.POST)
	public String testRest()
	{
		System.out.println("testRest POST ");
		return "success";
	}
	
	@ResponseBody
	@RequestMapping(value="/testRest/{id}",method=RequestMethod.DELETE)
	public String testRestDelete(@PathVariable("id") Integer id)
	{
		System.out.println("testRest DELETE :"+id);
		return "success";
	}
	
	@ResponseBody
	@RequestMapping(value="/testRest/{id}",method=RequestMethod.PUT)
	public String testRestPut(@PathVariable("id") Integer id)
	{
		System.out.println("testRest PUT :"+id);
		return "success";
	}
	
	@RequestMapping(value="/testRequestParam")
	public String testRequestParam(@RequestParam(value="username") String un,
			@RequestParam(value="age",required=false,defaultValue="0") int age)
	{
		System.out.println("testRequestParam,username:"+un+",age:"+age);
		return "success";
	}
	
	@RequestMapping(value="/testRequestHeader")
	public String testRequestHeader(@RequestHeader(value="Accept-Language") String al)
	{
		System.out.println("testRequestHeader,Accept-Language:"+al);
		return "success";
	}
	
	@RequestMapping(value="/testCookieValue")
	public String testCookieValue(@CookieValue(value="JSESSIONID") String sessionId)
	{
		System.out.println("testCookieValue sessionId:"+sessionId);
		return "success";
	}
	
	@RequestMapping("/testPojo")
	public String testPojo(User user)
	{
		System.out.println("testPojo: "+user);
		return "success";
	}
	
	@RequestMapping("/testServletAPI")
	public String testServletAPI(HttpServletRequest request,HttpServletResponse response) {
		System.out.println("testServletAPI: "+request+","+response);
		return "success";
	}
	
	@RequestMapping("/testModelAndView")
	public ModelAndView testModelAndView()
	{
		String viewName="success";
		ModelAndView modelAndView=new ModelAndView(viewName);
		modelAndView.addObject("time", new Date());
		return modelAndView;
	}
	
	@RequestMapping("/testMap")
	public String testMap(Map<String,Object> map)
	{
		map.put("names", Arrays.asList("tom","jerry","mike"));
		return "success";
	}

	//����SessionAttributesʱҪ�� �� �ϼ�ע�� @SessionAttributes
	@RequestMapping("/testSessionAttributes")
	public String testSessionAttributes(Map<String,Object> map)
	{
		User user=new User("Tom", "123", "tom@gzj.com", 18);
		map.put("user", user);
		map.put("content", "123456");
		map.put("school", "654321");
		return "success";
	}
	
	
	/**
	 * 
	 * 1��ִ��ModelAttribute���η��� �Ѷ������map��
	 * 2��springMVC��map��ȡ�����󣬲��ѱ��� ������������ö���Ķ�Ӧ����
	 * 3��springMVC�����봫��Ŀ�����Ĳ���
	 * 
	 * ע����ModelAttribute���εķ����з��뵽map�ļ���Ҫ��Ŀ�귽����εĵ�һ����ĸСд���ַ���һ��
	 * */
	@RequestMapping("testModelAttribute")
	public String testModelAttribute(User user)
	{
		System.out.println("�޸ģ�"+user);
		return "success";
	}
	
	@ModelAttribute  //��ModelAttribute ��ǵķ�������ִ��ÿ��Ŀ�귽��֮ǰ������
	public void getUser(@RequestParam(value="id",required=false) Integer id,Map<String,Object> map)
	{
		System.out.println("modelAttribute method...");
		if(id!=null)
		{
			User user= new User(1,"tom","123456","tom@163.com",12);
			System.out.println("��ȡ����"+user);
			map.put("user", user);
		}		
	}
	
	@RequestMapping("testView")
	public String testView()
	{
		return "helloView";
	}
	
	@RequestMapping("testRedirect")
	public String testRedirect()
	{
		System.out.println("testRedirect");
		return "redirect:/index.jsp";
	}
}
